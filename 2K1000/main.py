import sys
import random
import time
import subprocess
import json
import serial
import matplotlib
from datetime import datetime  # 添加datetime模块用于时间戳

matplotlib.use('Qt5Agg')
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QLabel,
    QPushButton, QLineEdit, QFormLayout, QMessageBox, QTabWidget, QFrame,
    QGridLayout, QGroupBox, QStatusBar, QTextEdit, QTableWidget, QTableWidgetItem,
    QHeaderView, QAbstractItemView
)
from PyQt5.QtCore import Qt, QTimer, QDateTime
from PyQt5.QtGui import QFont, QPalette, QColor, QIcon, QBrush


class LoginWindow(QWidget):
    def __init__(self, main_app):
        super().__init__()
        self.main_app = main_app
        self.setWindowTitle("药品冷链监控系统 - 登录")
        self.setFixedSize(400, 300)
        self.setStyleSheet("""
            background-color: #2c3e50;
            color: #ecf0f1;
            font-family: Arial;
        """)

        self.setWindowIcon(QIcon(":thermometer"))

        layout = QVBoxLayout()
        layout.setAlignment(Qt.AlignCenter)
        layout.setSpacing(20)

        title = QLabel("药品冷链监控系统")
        title.setFont(QFont("Arial", 24, QFont.Bold))
        title.setAlignment(Qt.AlignCenter)
        layout.addWidget(title)

        form_layout = QFormLayout()
        form_layout.setSpacing(15)

        self.username = QLineEdit()
        self.username.setPlaceholderText("请输入用户名")
        self.username.setFixedHeight(40)
        self.username.setStyleSheet("""
            background-color: #34495e;
            color: #ecf0f1;
            border: 1px solid #7f8c8d;
            border-radius: 5px;
            padding: 5px;
        """)

        self.password = QLineEdit()
        self.password.setPlaceholderText("请输入密码")
        self.password.setEchoMode(QLineEdit.Password)
        self.password.setFixedHeight(40)
        self.password.setStyleSheet("""
            background-color: #34495e;
            color: #ecf0f1;
            border: 1px solid #7f8c8d;
            border-radius: 5px;
            padding: 5px;
        """)

        form_layout.addRow("用户名:", self.username)
        form_layout.addRow("密码:", self.password)

        layout.addLayout(form_layout)

        login_btn = QPushButton("登 录")
        login_btn.setFixedHeight(45)
        login_btn.setStyleSheet("""
            QPushButton {
                background-color: #3498db;
                color: white;
                border-radius: 5px;
                font-size: 16px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #2980b9;
            }
            QPushButton:pressed {
                background-color: #1c6ea4;
            }
        """)
        login_btn.clicked.connect(self.attempt_login)

        layout.addWidget(login_btn)

        footer = QLabel("© 2025 药品冷链监控系统 | 版本 1.0")
        footer.setAlignment(Qt.AlignCenter)
        footer.setStyleSheet("color: #7f8c8d; font-size: 10px;")
        layout.addWidget(footer)

        self.setLayout(layout)

    def attempt_login(self):
        username = self.username.text()
        password = self.password.text()

        if username == "admin" and password == "admin123":
            self.main_window = MainWindow()
            self.main_window.show()
            self.close()
        else:
            QMessageBox.warning(self, "登录失败", "用户名或密码不正确！")


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("药品冷链监控系统")
        self.setMinimumSize(1000, 700)
        self.setStyleSheet("""
            background-color: #ecf0f1;
            font-family: Arial;
        """)

        self.setWindowIcon(QIcon(":thermometer"))

        central_widget = QWidget()
        self.setCentralWidget(central_widget)

        main_layout = QVBoxLayout(central_widget)

        nav_layout = QHBoxLayout()
        nav_layout.setSpacing(10)
        nav_layout.setContentsMargins(10, 5, 10, 5)

        self.realtime_btn = QPushButton("实时监控")
        self.history_btn = QPushButton("历史数据")
        self.alarm_btn = QPushButton("报警记录")
        self.debug_btn = QPushButton("调试信息")

        button_style = """
            QPushButton {
                background-color: #3498db;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                font-weight: bold;
                font-size: 14px;
            }
            QPushButton:hover {
                background-color: #2980b9;
            }
            QPushButton:pressed {
                background-color: #1c6ea4;
            }
            QPushButton:checked {
                background-color: #1c6ea4;
            }
        """

        self.realtime_btn.setStyleSheet(button_style)
        self.history_btn.setStyleSheet(button_style)
        self.alarm_btn.setStyleSheet(button_style)
        self.debug_btn.setStyleSheet(button_style)

        self.realtime_btn.setCheckable(True)
        self.history_btn.setCheckable(True)
        self.alarm_btn.setCheckable(True)
        self.debug_btn.setCheckable(True)

        self.realtime_btn.setChecked(True)

        self.realtime_btn.clicked.connect(lambda: self.switch_tab(0))
        self.history_btn.clicked.connect(lambda: self.switch_tab(1))
        self.alarm_btn.clicked.connect(lambda: self.switch_tab(2))
        self.debug_btn.clicked.connect(lambda: self.switch_tab(3))

        nav_layout.addWidget(self.realtime_btn)
        nav_layout.addWidget(self.history_btn)
        nav_layout.addWidget(self.alarm_btn)
        nav_layout.addWidget(self.debug_btn)
        nav_layout.addStretch()

        main_layout.addLayout(nav_layout)

        header = QLabel("药品冷链实时监控系统")
        header.setFont(QFont("Arial", 22, QFont.Bold))
        header.setStyleSheet("color: #2c3e50; padding: 15px;")
        header.setAlignment(Qt.AlignCenter)
        main_layout.addWidget(header)

        self.tabs = QTabWidget()
        self.tabs.setStyleSheet("""
            QTabWidget::pane {
                border: 1px solid #bdc3c7;
                border-radius: 5px;
                background: white;
            }
            QTabBar::tab {
                background: #3498db;
                color: white;
                padding: 10px;
                border-top-left-radius: 5px;
                border-top-right-radius: 5px;
            }
            QTabBar::tab:selected {
                background: #2980b9;
            }
        """)

        self.tabs.tabBar().setVisible(False)

        self.realtime_tab = self.create_realtime_tab()
        self.tabs.addTab(self.realtime_tab, "实时监控")

        self.history_tab = self.create_history_tab()
        self.tabs.addTab(self.history_tab, "历史数据")

        self.alarm_tab = self.create_alarm_tab()
        self.tabs.addTab(self.alarm_tab, "报警记录")

        self.debug_tab = self.create_debug_tab()
        self.tabs.addTab(self.debug_tab, "调试信息")

        main_layout.addWidget(self.tabs)

        self.status_bar = self.statusBar()
        self.status_bar.showMessage("系统状态: 运行中 | 最后更新时间: -")

        self.temperature = 0.0
        self.humidity = 0.0
        self.alcohol = 0.0
        self.ultrasonic = 0.0

        # 历史数据存储
        self.history_data = {
            'time': [],
            'temperature': [],
            'humidity': [],
            'alcohol': [],
            'ultrasonic': []
        }
        self.max_history_length = 100

        # 报警历史记录
        self.alarm_history = []

        # 传感器数据是否有效
        self.temperature_valid = True
        self.humidity_valid = True
        self.alcohol_valid = True

        self.serial_port = None
        self.init_serial()

        self.timer = QTimer(self)
        self.timer.timeout.connect(self.update_sensor_data)
        self.timer.start(2000)

        # 初始化上传队列和定时器
        self.upload_queue = []  # 待上传的数据队列
        self.upload_timer = QTimer(self)
        self.upload_timer.timeout.connect(self.process_upload_queue)
        self.upload_timer.start(4000)  # 4秒处理一次上传队列
        self.last_upload_time = 0  # 上次上传时间

        self.update_initial_display()

    def init_cloud_config(self):
        """初始化云平台配置（修正为原始正确的结构）"""
        self.cloud_config = {
            # 温度配置（独立）
            "temp": {
                "sign": "03897466c53c9d5d",
                "module_identifier": "Temp",
                "model_identifier": "temp",
                "type": 1,
            },
            # 湿度配置（独立）
            "humi": {
                "sign": "03897466c53c9d5d",
                "module_identifier": "Humid",
                "model_identifier": "humidity",
                "type": 1,
            },
            # 酒精配置
            "alcohol": {
                "sign": "03897466c53c9d5d",
                "module_identifier": "Alcohol",
                "model_identifier": "concentration",
                "type": 1
            },
            # 超声波配置
            "ultrasonic": {
                "sign": "03897466c53c9d5d",
                "module_identifier": "Ultrasonic",
                "model_identifier": "distance",
                "type": 1
            },
            # 公共配置
            "common": {
                "mqtt_host": "115.28.209.116",
                "mqtt_topic": "device/03897466c53c9d5d/up",
                "device_id": "14fd6888ce2b3b750625839c21c51878"
            }
        }

    def switch_tab(self, index):
        self.tabs.setCurrentIndex(index)
        self.realtime_btn.setChecked(index == 0)
        self.history_btn.setChecked(index == 1)
        self.alarm_btn.setChecked(index == 2)
        self.debug_btn.setChecked(index == 3)

        if index == 1:
            self.update_history_plot()
        elif index == 2:
            self.update_alarm_table()

    def create_realtime_tab(self):
        tab = QWidget()
        layout = QVBoxLayout(tab)

        grid = QGridLayout()
        grid.setSpacing(20)

        temp_box = self.create_sensor_box("温度", "℃", "2-8℃", "#e74c3c", "thermometer.png")
        self.temp_label = temp_box.findChild(QLabel, "value")
        grid.addWidget(temp_box, 0, 0)

        humidity_box = self.create_sensor_box("湿度", "%", "30-60%", "#3498db", "humidity.png")
        self.humidity_label = humidity_box.findChild(QLabel, "value")
        grid.addWidget(humidity_box, 0, 1)

        alcohol_box = self.create_sensor_box("酒精浓度", "mg/L", "<100mg/L", "#f39c12", "alcohol.png")
        self.alcohol_label = alcohol_box.findChild(QLabel, "value")
        grid.addWidget(alcohol_box, 1, 0)

        ultrasonic_box = self.create_sensor_box("超声波距离", "cm", ">10cm", "#27ae60", "distance.png")
        self.ultrasonic_label = ultrasonic_box.findChild(QLabel, "value")
        grid.addWidget(ultrasonic_box, 1, 1)

        layout.addLayout(grid)

        self.alarm_display = QLabel("当前状态: 一切正常")
        self.alarm_display.setFont(QFont("Arial", 16))
        self.alarm_display.setAlignment(Qt.AlignCenter)
        self.alarm_display.setStyleSheet("""
            background-color: #27ae60;
            color: white;
            border-radius: 10px;
            padding: 15px;
            margin: 20px;
        """)
        layout.addWidget(self.alarm_display)

        return tab

    def create_sensor_box(self, name, unit, safe_range, color, icon_name):
        group = QGroupBox(name)
        group.setStyleSheet(f"""
            QGroupBox {{
                border: 2px solid {color};
                border-radius: 10px;
                margin-top: 20px;
                font-weight: bold;
                color: {color};
            }}
            QGroupBox::title {{
                subcontrol-origin: margin;
                subcontrol-position: top center;
                padding: 0 10px;
                background-color: {color};
                color: white;
                border-radius: 5px;
            }}
        """)

        layout = QVBoxLayout()
        layout.setAlignment(Qt.AlignCenter)

        icon_label = QLabel()
        icon_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(icon_label)

        value_label = QLabel("0.0")
        value_label.setObjectName("value")
        value_label.setFont(QFont("Arial", 28, QFont.Bold))
        value_label.setStyleSheet(f"color: {color};")
        value_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(value_label)

        unit_label = QLabel(unit)
        unit_label.setFont(QFont("Arial", 14))
        unit_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(unit_label)

        range_label = QLabel(f"安全范围: {safe_range}")
        range_label.setFont(QFont("Arial", 10))
        range_label.setStyleSheet("color: #7f8c8d;")
        range_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(range_label)

        group.setLayout(layout)
        return group

    def create_history_tab(self):
        tab = QWidget()
        layout = QVBoxLayout(tab)
        layout.setContentsMargins(10, 10, 10, 10)

        chart_group = QGroupBox("传感器历史数据趋势图")
        chart_group.setStyleSheet("""
            QGroupBox {
                border: 2px solid #3498db;
                border-radius: 10px;
                margin-top: 10px;
                font-weight: bold;
                color: #3498db;
            }
            QGroupBox::title {
                subcontrol-origin: margin;
                subcontrol-position: top center;
                padding: 0 10px;
                background-color: #3498db;
                color: white;
                border-radius: 5px;
            }
        """)

        chart_layout = QVBoxLayout(chart_group)

        self.fig = Figure(figsize=(10, 5), dpi=100)
        self.canvas = FigureCanvas(self.fig)
        self.ax = self.fig.add_subplot(111)

        self.ax.set_title('Trend of historical sensor data', fontsize=14)
        self.ax.set_xlabel('Time', fontsize=12)
        self.ax.set_ylabel('Value', fontsize=12)
        self.ax.grid(True, linestyle='--', alpha=0.7)

        self.temp_line, = self.ax.plot([], [], 'r-', label='Temperature(℃)', linewidth=2)
        self.humi_line, = self.ax.plot([], [], 'b-', label='Humidity(%)', linewidth=2)
        self.alcohol_line, = self.ax.plot([], [], 'g-', label='Alcohol(mg/L)', linewidth=2)
        self.ultrasonic_line, = self.ax.plot([], [], 'm-', label='Distance(cm)', linewidth=2)

        self.ax.legend(loc='upper right')

        chart_layout.addWidget(self.canvas)
        layout.addWidget(chart_group)

        btn_layout = QHBoxLayout()
        btn_layout.addStretch()

        update_btn = QPushButton("更新图表")
        update_btn.setStyleSheet("""
            QPushButton {
                background-color: #3498db;
                color: white;
                padding: 8px 16px;
                border-radius: 5px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #2980b9;
            }
        """)
        update_btn.clicked.connect(self.update_history_plot)

        clear_btn = QPushButton("清除历史")
        clear_btn.setStyleSheet("""
            QPushButton {
                background-color: #e74c3c;
                color: white;
                padding: 8px 16px;
                border-radius: 5px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #c0392b;
            }
        """)
        clear_btn.clicked.connect(self.clear_history_data)

        btn_layout.addWidget(update_btn)
        btn_layout.addWidget(clear_btn)
        btn_layout.addStretch()

        layout.addLayout(btn_layout)

        return tab

    def create_alarm_tab(self):
        tab = QWidget()
        layout = QVBoxLayout(tab)

        # 创建报警记录表格
        self.alarm_table = QTableWidget()
        self.alarm_table.setColumnCount(5)
        self.alarm_table.setHorizontalHeaderLabels(["时间", "传感器", "报警值", "报警级别", "状态"])
        self.alarm_table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
        self.alarm_table.setSelectionBehavior(QAbstractItemView.SelectRows)
        self.alarm_table.setStyleSheet("""
            QTableWidget {
                background-color: white;
                border-radius: 10px;
                gridline-color: #e0e0e0;
            }
            QHeaderView::section {
                background-color: #3498db;
                color: white;
                font-weight: bold;
                padding: 5px;
            }
        """)

        layout.addWidget(self.alarm_table)

        btn_layout = QHBoxLayout()
        btn_layout.addStretch()

        export_btn = QPushButton("导出报警记录")
        export_btn.setStyleSheet("""
            QPushButton {
                background-color: #3498db;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #2980b9;
            }
        """)
        export_btn.clicked.connect(self.export_alarm_history)

        clear_btn = QPushButton("清空记录")
        clear_btn.setStyleSheet("""
            QPushButton {
                background-color: #e74c3c;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #c0392b;
            }
        """)
        clear_btn.clicked.connect(self.clear_alarm_history)

        btn_layout.addWidget(export_btn)
        btn_layout.addWidget(clear_btn)
        btn_layout.addStretch()

        layout.addLayout(btn_layout)

        return tab

    def update_alarm_table(self):
        """更新报警记录表格"""
        self.alarm_table.setRowCount(len(self.alarm_history))

        for row, alarm in enumerate(self.alarm_history):
            # 时间
            time_item = QTableWidgetItem(alarm['time'])
            self.alarm_table.setItem(row, 0, time_item)

            # 传感器
            sensor_item = QTableWidgetItem(alarm['sensor'])
            self.alarm_table.setItem(row, 1, sensor_item)

            # 报警值
            value_item = QTableWidgetItem(alarm['value'])
            self.alarm_table.setItem(row, 2, value_item)

            # 报警级别
            level_item = QTableWidgetItem(alarm['level'])
            if alarm['level'] == "严重":
                level_item.setForeground(QBrush(QColor("#e74c3c")))
            else:
                level_item.setForeground(QBrush(QColor("#f39c12")))
            self.alarm_table.setItem(row, 3, level_item)

            # 状态
            status_item = QTableWidgetItem(alarm['status'])
            if alarm['status'] == "已处理":
                status_item.setForeground(QBrush(QColor("#27ae60")))
            else:
                status_item.setForeground(QBrush(QColor("#e74c3c")))
            self.alarm_table.setItem(row, 4, status_item)

        # 自动调整行高
        self.alarm_table.resizeRowsToContents()

    def export_alarm_history(self):
        """导出报警记录（模拟功能）"""
        QMessageBox.information(self, "导出成功", "报警记录已导出到 alarm_history.csv 文件")
        self.add_debug("报警记录已导出")

    def clear_alarm_history(self):
        """清空报警记录"""
        self.alarm_history = []
        self.update_alarm_table()
        self.add_debug("报警记录已清空")

    def add_alarm_record(self, sensor, value, level):
        """添加报警记录"""
        alarm = {
            'time': datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            'sensor': sensor,
            'value': value,
            'level': level,
            'status': "未处理"
        }
        self.alarm_history.append(alarm)

        # 如果切换到报警记录标签页，立即更新表格
        if self.tabs.currentIndex() == 2:
            self.update_alarm_table()

        # 添加到调试信息
        self.add_debug(f"报警记录: {sensor} {value} ({level})")

    def create_debug_tab(self):
        tab = QWidget()
        layout = QVBoxLayout(tab)

        title_label = QLabel("调试信息")
        title_label.setFont(QFont("Arial", 18, QFont.Bold))
        title_label.setStyleSheet("color: #2c3e50; padding: 10px;")
        title_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(title_label)

        self.debug_text = QTextEdit()
        self.debug_text.setReadOnly(True)
        self.debug_text.setStyleSheet("""
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 5px;
            padding: 10px;
            font-family: Consolas, monospace;
            font-size: 12px;
        """)
        layout.addWidget(self.debug_text, 1)

        btn_layout = QHBoxLayout()
        btn_layout.addStretch()

        clear_btn = QPushButton("清空日志")
        clear_btn.setStyleSheet("""
            QPushButton {
                background-color: #e74c3c;
                color: white;
                padding: 8px 16px;
                border-radius: 5px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #c0392b;
            }
        """)
        clear_btn.clicked.connect(self.debug_text.clear)

        btn_layout.addWidget(clear_btn)
        btn_layout.addStretch()

        layout.addLayout(btn_layout)

        return tab

    def init_serial(self):
        port = "/dev/ttyS1"
        baudrate = 9600
        try:
            self.serial_port = serial.Serial(
                port, baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=0.1
            )
            self.init_cloud_config()
            self.add_debug(f"串口初始化成功: {port}")
        except Exception as e:
            self.add_debug(f"串口错误: {str(e)}")
            self.serial_port = None

    def add_debug(self, msg):
        timestamp = time.strftime("%H:%M:%S", time.localtime())
        self.debug_text.append(f"[{timestamp}] {msg}")
        self.debug_text.verticalScrollBar().setValue(
            self.debug_text.verticalScrollBar().maximum()
        )

    def update_initial_display(self):
        # 应用阈值限制
        self.temp_label.setText(self.format_value(self.temperature, "℃"))
        self.humidity_label.setText(self.format_value(self.humidity, "%"))
        self.alcohol_label.setText(self.format_value(self.alcohol, "mg/L"))
        self.ultrasonic_label.setText(self.format_value(self.ultrasonic, "cm"))

    def format_value(self, value, unit):
        """格式化显示值"""
        if unit == "℃":
            return f"{value:.1f}℃"
        elif unit == "%":
            return f"{value:.1f}%"
        elif unit == "mg/L":
            return f"{value:.2f}mg/L"
        elif unit == "cm":
            return f"{value:.1f}cm"
        return f"{value}"

    def update_sensor_data(self):
        # 重置传感器有效性状态
        self.temperature_valid = True
        self.humidity_valid = True
        self.alcohol_valid = True

        if self.serial_port and self.serial_port.is_open:
            try:
                data = self.serial_port.read(self.serial_port.in_waiting)
                if data:
                    hex_str = data.hex().upper()
                    formatted_hex = " ".join([hex_str[i:i + 2] for i in range(0, len(hex_str), 2)])
                    self.add_debug(f"原始数据: {formatted_hex}")

                    if len(data) >= 17 and data[0] == 0xFE:
                        addr = data[6]

                        if addr == 0x02:
                            self.add_debug("检测到温湿度酒精传感器数据")

                            # 解析温度
                            temp_bytes = data[7:9]
                            temp_value = (temp_bytes[0] << 8) | temp_bytes[1]
                            temp = temp_value / 10.0

                            # 检查温度有效性
                            if temp > 100:
                                self.temperature_valid = False
                                self.add_debug(f"温度数据无效: {temp:.1f}℃ > 100")
                            else:
                                self.temperature = temp
                                # 添加温度数据到上传队列
                                self.add_to_upload_queue('temperature', self.temperature)

                            # 解析湿度
                            humi_bytes = data[9:11]
                            humi_value = (humi_bytes[0] << 8) | humi_bytes[1]
                            humi = humi_value / 10.0

                            # 检查湿度有效性
                            if humi > 100:
                                self.humidity_valid = False
                                self.add_debug(f"湿度数据无效: {humi:.1f}% > 100")
                            else:
                                self.humidity = humi
                                # 添加湿度数据到上传队列
                                self.add_to_upload_queue('humidity', self.humidity)

                            # 解析酒精浓度
                            alcohol_bytes = data[11:13]
                            alcohol_adc = (alcohol_bytes[0] << 8) | alcohol_bytes[1]
                            VCC = 5.0
                            ADC_MAX = 1023
                            voltage = (alcohol_adc / ADC_MAX) * VCC
                            alcohol = max(0, 0.2 * (voltage ** 1.5))

                            # 检查酒精浓度有效性
                            if alcohol > 100:
                                self.alcohol_valid = False
                                self.add_debug(f"酒精浓度数据无效: {alcohol:.2f}mg/L > 100")
                            else:
                                self.alcohol = alcohol
                                # 添加酒精数据到上传队列
                                self.add_to_upload_queue('alcohol', self.alcohol)

                        elif addr == 0x03:
                            self.add_debug("检测到超声波传感器数据")
                            ultrasonic_bytes = data[7:9]
                            ultrasonic_value = (ultrasonic_bytes[0] << 8) | ultrasonic_bytes[1]
                            self.ultrasonic = ultrasonic_value

                            # 添加超声波数据到上传队列
                            self.add_to_upload_queue('ultrasonic', self.ultrasonic)
            except Exception as e:
                self.add_debug(f"串口数据解析错误: {str(e)}")
        else:
            self.add_debug("未检测到串口，使用模拟数据")
            # 生成模拟数据，确保不超过100
            self.temperature = min(100, round(5 + random.uniform(-2.5, 2.5), 1))
            self.humidity = min(100, round(45 + random.uniform(-15, 15), 1))
            self.alcohol = min(100, round(random.uniform(0, 80), 2))
            self.ultrasonic = round(10 + random.uniform(0, 30), 1)

            # 添加模拟数据到上传队列
            self.add_to_upload_queue('temperature', self.temperature)
            self.add_to_upload_queue('humidity', self.humidity)
            self.add_to_upload_queue('alcohol', self.alcohol)
            self.add_to_upload_queue('ultrasonic', self.ultrasonic)

        # 更新显示
        self.temp_label.setText(self.format_value(self.temperature, "℃"))
        self.humidity_label.setText(self.format_value(self.humidity, "%"))
        self.alcohol_label.setText(self.format_value(self.alcohol, "mg/L"))
        self.ultrasonic_label.setText(self.format_value(self.ultrasonic, "cm"))

        current_time = QDateTime.currentDateTime().toString("hh:mm:ss")
        self.save_history_data(current_time)

        alarms = []

        # 温度报警检查
        if not self.temperature_valid:
            alarms.append("温度传感器故障")
            self.add_alarm_record("温度", "传感器故障", "严重")
        elif self.temperature < 2:
            alarms.append(f"温度过低 ({self.temperature:.1f}℃)")
            self.add_alarm_record("温度", f"{self.temperature:.1f}℃", "严重")
        elif self.temperature > 8:
            alarms.append(f"温度过高 ({self.temperature:.1f}℃)")
            self.add_alarm_record("温度", f"{self.temperature:.1f}℃", "严重")

        # 湿度报警检查
        if not self.humidity_valid:
            alarms.append("湿度传感器故障")
            self.add_alarm_record("湿度", "传感器故障", "严重")
        elif self.humidity < 30:
            alarms.append(f"湿度过低 ({self.humidity:.1f}%)")
            self.add_alarm_record("湿度", f"{self.humidity:.1f}%", "警告")
        elif self.humidity > 60:
            alarms.append(f"湿度过高 ({self.humidity:.1f}%)")
            self.add_alarm_record("湿度", f"{self.humidity:.1f}%", "警告")

        # 酒精浓度报警检查
        if not self.alcohol_valid:
            alarms.append("酒精传感器故障")
            self.add_alarm_record("酒精浓度", "传感器故障", "严重")
        elif self.alcohol > 100:
            alarms.append(f"酒精浓度过高 ({self.alcohol:.2f}mg/L)")
            self.add_alarm_record("酒精浓度", f"{self.alcohol:.2f}mg/L", "严重")

        # 超声波距离报警检查
        if self.ultrasonic < 15:
            alarms.append(f"距离过近 ({self.ultrasonic:.1f}cm)")
            self.add_alarm_record("超声波", f"{self.ultrasonic:.1f}cm", "警告")

        if alarms:
            alarm_text = " | ".join(alarms)
            self.alarm_display.setText(f"报警: {alarm_text}")
            self.alarm_display.setStyleSheet("""
                background-color: #e74c3c;
                color: white;
                border-radius: 10px;
                padding: 15px;
                margin: 20px;
            """)
        else:
            self.alarm_display.setText("当前状态: 一切正常")
            self.alarm_display.setStyleSheet("""
                background-color: #27ae60;
                color: white;
                border-radius: 10px;
                padding: 15px;
                margin: 20px;
            """)

        self.status_bar.showMessage(f"系统状态: 运行中 | 最后更新时间: {self.get_current_time()}")

    def add_to_upload_queue(self, sensor_type, value):
        """添加数据到上传队列"""
        # 只添加有效数据（不超过100）
        if value <= 100:
            # 检查队列中是否已有相同类型的数据
            for i, item in enumerate(self.upload_queue):
                if item['type'] == sensor_type:
                    # 更新已有数据为最新值
                    self.upload_queue[i] = {'type': sensor_type, 'value': value}
                    return

            # 队列中没有相同类型的数据，添加新项
            self.upload_queue.append({'type': sensor_type, 'value': value})

            # 如果队列过长，移除最旧的数据
            if len(self.upload_queue) > 10:
                self.upload_queue.pop(0)
        else:
            self.add_debug(f"{sensor_type}数据超过100，不添加到上传队列")

    def process_upload_queue(self):
        """处理上传队列，每4秒上传一组数据"""
        current_time = time.time()

        # 确保距离上次上传至少4秒
        if current_time - self.last_upload_time < 4.0:
            self.add_debug("上传频率限制：距离上次上传不足4秒")
            return

        if not self.upload_queue:
            self.add_debug("上传队列为空")
            return

        # 从队列中取出第一个数据
        data_item = self.upload_queue.pop(0)
        sensor_type = data_item['type']
        value = data_item['value']

        # 根据传感器类型上传数据
        if sensor_type == 'temperature':
            self.upload_temperature(value)
        elif sensor_type == 'humidity':
            self.upload_humidity(value)
        elif sensor_type == 'alcohol':
            self.upload_alcohol(value)
        elif sensor_type == 'ultrasonic':
            self.upload_ultrasonic(value)

        # 更新上次上传时间
        self.last_upload_time = current_time
        self.add_debug(f"已上传{sensor_type}数据，队列剩余: {len(self.upload_queue)}")

    def save_history_data(self, current_time):
        # 只保存有效数据
        if self.temperature_valid and self.temperature <= 100:
            self.history_data['temperature'].append(self.temperature)
        else:
            self.history_data['temperature'].append(None)

        if self.humidity_valid and self.humidity <= 100:
            self.history_data['humidity'].append(self.humidity)
        else:
            self.history_data['humidity'].append(None)

        if self.alcohol_valid and self.alcohol <= 100:
            self.history_data['alcohol'].append(self.alcohol)
        else:
            self.history_data['alcohol'].append(None)

        self.history_data['ultrasonic'].append(self.ultrasonic)
        self.history_data['time'].append(current_time)

        if len(self.history_data['time']) > self.max_history_length:
            for key in self.history_data:
                self.history_data[key] = self.history_data[key][1:]

    def update_history_plot(self):
        if not self.history_data['time']:
            self.add_debug("没有历史数据可绘制")
            return

        try:
            self.ax.clear()

            # 只绘制有效数据
            valid_temp = [(t, v) for t, v in zip(self.history_data['time'], self.history_data['temperature']) if
                          v is not None]
            if valid_temp:
                times_temp, values_temp = zip(*valid_temp)
                self.ax.plot(times_temp, values_temp, 'r-', label='Temperature(℃)', linewidth=2)

            valid_humi = [(t, v) for t, v in zip(self.history_data['time'], self.history_data['humidity']) if
                          v is not None]
            if valid_humi:
                times_humi, values_humi = zip(*valid_humi)
                self.ax.plot(times_humi, values_humi, 'b-', label='Humidity(%)', linewidth=2)

            valid_alcohol = [(t, v) for t, v in zip(self.history_data['time'], self.history_data['alcohol']) if
                             v is not None]
            if valid_alcohol:
                times_alcohol, values_alcohol = zip(*valid_alcohol)
                self.ax.plot(times_alcohol, values_alcohol, 'g-', label='Alcohol(mg/L)', linewidth=2)

            # 超声波数据总是有效
            self.ax.plot(self.history_data['time'], self.history_data['ultrasonic'],
                         'm-', label='Distance(cm)', linewidth=2)

            # 添加100阈值线
            self.ax.axhline(y=100, color='k', linestyle='--', alpha=0.5, label='Upper_limit')

            # 添加安全范围参考线
            self.ax.axhline(y=2, color='r', linestyle=':', alpha=0.3)
            self.ax.axhline(y=8, color='r', linestyle=':', alpha=0.3)
            self.ax.axhline(y=30, color='b', linestyle=':', alpha=0.3)
            self.ax.axhline(y=60, color='b', linestyle=':', alpha=0.3)
            self.ax.axhline(y=10, color='m', linestyle=':', alpha=0.3)

            self.ax.set_title('Trend of historical sensor data', fontsize=14)
            self.ax.set_xlabel('Time', fontsize=12)
            self.ax.set_ylabel('Value', fontsize=12)
            self.ax.legend(loc='upper right', fontsize=10)
            self.ax.grid(True, linestyle='--', alpha=0.7)

            if len(self.history_data['time']) > 10:
                step = max(1, len(self.history_data['time']) // 10)
                self.ax.set_xticks(self.history_data['time'][::step])
            else:
                self.ax.set_xticks(self.history_data['time'])

            self.ax.tick_params(axis='x', rotation=45, labelsize=8)

            self.fig.tight_layout()
            self.canvas.draw()

            self.add_debug("历史图表已更新")
        except Exception as e:
            self.add_debug(f"更新历史图表时出错: {str(e)}")

    def clear_history_data(self):
        for key in self.history_data:
            self.history_data[key] = []
        self.update_history_plot()
        self.add_debug("历史数据已清除")

    def get_current_time(self):
        return datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    # =================== 数据上传功能 ===================
    def upload_temperature(self, temperature):
        """上传温度数据"""
        config = self.cloud_config["temp"]
        common = self.cloud_config["common"]

        payload = {
            "sign": config["sign"],
            "type": config["type"],
            "data": {
                config["module_identifier"]: {
                    config["model_identifier"]: temperature
                }
            }
        }

        self.send_to_cloud(payload, "temp")

    def upload_humidity(self, humidity):
        """上传湿度数据"""
        config = self.cloud_config["humi"]
        common = self.cloud_config["common"]

        payload = {
            "sign": config["sign"],
            "type": config["type"],
            "data": {
                config["module_identifier"]: {
                    config["model_identifier"]: humidity
                }
            }
        }

        self.send_to_cloud(payload, "humi")

    def upload_alcohol(self, alcohol):
        """上传酒精浓度数据"""
        config = self.cloud_config["alcohol"]
        common = self.cloud_config["common"]

        payload = {
            "sign": config["sign"],
            "type": config["type"],
            "data": {
                config["module_identifier"]: {
                    config["model_identifier"]: alcohol
                }
            }
        }

        self.send_to_cloud(payload, "alcohol")

    def upload_ultrasonic(self, ultrasonic):
        """上传超声波距离数据"""
        config = self.cloud_config["ultrasonic"]
        common = self.cloud_config["common"]

        payload = {
            "sign": config["sign"],
            "type": config["type"],
            "data": {
                config["module_identifier"]: {
                    config["model_identifier"]: ultrasonic
                }
            }
        }

        self.send_to_cloud(payload, "ultrasonic")

    def send_to_cloud(self, payload, sensor_type):
        """通用方法：发送数据到云平台"""
        payload_json = json.dumps(payload, ensure_ascii=False)
        self.add_debug(f"上传 JSON: {payload_json}")

        common = self.cloud_config["common"]

        # 生成唯一的client_id
        client_id = f"device-{common['device_id']}-{sensor_type}"

        # 使用mosquitto_pub发送MQTT消息
        cmd = [
            "mosquitto_pub",
            "-h", common["mqtt_host"],
            "-t", common["mqtt_topic"],
            "-m", payload_json,
            "-q", "1",
            "-i", client_id
        ]

        try:
            result = subprocess.run(
                cmd, capture_output=True, text=True, timeout=5
            )
            sensor_name = list(payload["data"].keys())[0]
            if result.returncode == 0:
                self.add_debug(f"{sensor_name} 上传成功！")
            else:
                self.add_debug(f"{sensor_name} 上传失败: {result.stderr}")
        except Exception as e:
            sensor_name = list(payload["data"].keys())[0]
            self.add_debug(f"{sensor_name} 上传错误: {str(e)}")


if __name__ == "__main__":
    app = QApplication(sys.argv)

    app.setStyleSheet("""
        QWidget {
            background-color: #F0F0F0;
        }
        QLabel {
            color: #333333;
        }
        QLineEdit {
            padding: 5px;
            border: 1px solid #CCCCCC;
            border-radius: 3px;
        }
        QPushButton {
            background-color: #3498db;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 3px;
        }
        QPushButton:hover {
            background-color: #2980b9;
        }
        QGroupBox {
            border: 2px solid #CCCCCC;
            border-radius: 5px;
            margin-top: 10px;
        }
        QTextEdit {
            background-color: #FFFFFF;
            border: 1px solid #CCCCCC;
            border-radius: 5px;
            padding: 5px;
        }
    """)

    login = LoginWindow(app)
    login.show()

    sys.exit(app.exec_())
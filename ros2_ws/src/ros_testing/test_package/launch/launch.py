from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='test_package',  # Replace with your package name
            executable='dummy_video.py', # The name of the executable (should match the entry point defined in setup.py)
            name='image_publisher_node',
            output='screen',
            parameters=[],
            arguments=['../videos/videoplayback.mp4']  # Replace with the path to your video file
        ),
    ])

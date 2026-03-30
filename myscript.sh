# Variables using command substitution
current_user=$(whoami)
system_info=$(uname -a)
python_version=$(python3 --version)
python_path=$(which python3)

# Output formatting
echo "=============================="
echo "   SYSTEM INFORMATION SCRIPT   "
echo "=============================="

echo ""
echo "User: $current_user"
echo ""
echo "System Info: $system_info"
echo ""
echo "Python Version: $python_version"
echo ""
echo "Python Location: $python_path"
echo ""
echo "=============================="
echo "Script Execution Completed"

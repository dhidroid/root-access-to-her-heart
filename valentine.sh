#!/bin/bash

# Colors
GREEN='\033[0;32m'
BRIGHT_GREEN='\033[1;32m'
RED='\033[0;31m'
BRIGHT_RED='\033[1;31m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m'

# Function to show board with message
show_board() {
    local line1="$1"
    local line2="$2"
    
    echo ""
    echo -e "${BRIGHT_GREEN}                       ___  "
    echo -e "                      /o o\ "
    echo -e "                     (  _  )"
    echo -e "                      \___/ "
    echo -e "                    ___ooo___${NC}"
    echo -e "${GREEN} _______________/${BRIGHT_GREEN}         ${GREEN}\\_______________"
    echo -e "/                                              \\"
    echo -e "|                                              |"
    echo -e "| Me: Will you be my Valentine?               |"
    echo -e "| Girl: ${line1}"
    echo -e "| ${line2}"
    echo -e "|                                              |"
    echo -e "\\_______________                  _____________/"
    echo -e "                ${BRIGHT_GREEN}ooo${GREEN}"
    echo -e "             ${BRIGHT_GREEN}   |  |  |"
    echo -e "               |__|__|"
    echo -e "               /-'Y'-\\"
    echo -e "              (__/ \__)${NC}"
    echo ""
}

# Celebration animations
celebration_frame1() {
    echo -e "${YELLOW}"
    echo "         \\O/        \\O/  "
    echo "          |          |   "
    echo "         / \\        / \\  "
    echo -e "${NC}"
}

celebration_frame2() {
    echo -e "${YELLOW}"
    echo "         _O_        _O_  "
    echo "         /|\\        /|\\  "
    echo "         / \\        / \\  "
    echo -e "${NC}"
}

celebration_frame3() {
    echo -e "${YELLOW}"
    echo "          O          O   "
    echo "         /|\\        /|\\  "
    echo "         / \\        / \\  "
    echo -e "${NC}"
}

# Hearts falling animation
hearts_fall() {
    for i in {1..5}; do
        clear
        echo -e "${BRIGHT_RED}"
        case $((i % 3)) in
            0)
                echo "    ♥       ♥       ♥       ♥       ♥"
                echo ""
                echo "        ♥       ♥       ♥       ♥"
                echo ""
                echo "    ♥       ♥       ♥       ♥       ♥"
                ;;
            1)
                echo ""
                echo "        ♥       ♥       ♥       ♥"
                echo ""
                echo "    ♥       ♥       ♥       ♥       ♥"
                echo ""
                ;;
            2)
                echo ""
                echo "    ♥       ♥       ♥       ♥       ♥"
                echo ""
                echo "        ♥       ♥       ♥       ♥"
                ;;
        esac
        echo -e "${NC}"
        echo -e "${CYAN}     ╔════════════════════════════════╗${NC}"
        echo -e "${CYAN}     ║   YES! YES! YES! LET'S GO!!!  ║${NC}"
        echo -e "${CYAN}     ╚════════════════════════════════╝${NC}"
        echo ""
        
        case $((i % 3)) in
            0) celebration_frame1 ;;
            1) celebration_frame2 ;;
            2) celebration_frame3 ;;
        esac
        sleep 0.4
    done
}

# Dancing couple animation
dancing_couple() {
    for i in {1..4}; do
        clear
        echo -e "${BRIGHT_RED}  ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥${NC}"
        echo ""
        
        if [ $((i % 2)) -eq 0 ]; then
            echo -e "${YELLOW}           \\o/    \\o/${NC}"
            echo -e "${YELLOW}            |  ♥  |${NC}"
            echo -e "${YELLOW}           /|     |\\${NC}"
        else
            echo -e "${YELLOW}            o/    \\o${NC}"
            echo -e "${YELLOW}            |  ♥  |${NC}"
            echo -e "${YELLOW}           /|     |\\${NC}"
        fi
        
        echo ""
        echo -e "${CYAN}      💑 Dancing into love! 💑${NC}"
        echo ""
        echo -e "${BRIGHT_RED}  ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥${NC}"
        sleep 0.4
    done
}

# Fireworks animation
fireworks() {
    clear
    echo -e "${YELLOW}"
    echo "            *  .  *    .   *    *"
    echo "        .    *       *       .    *"
    echo "    *      .   *   .   *  .    *   ."
    echo -e "${NC}"
    echo -e "${BRIGHT_GREEN}      🎉🎊 SUDO ACTIVATED! 🎊🎉${NC}"
    echo -e "${YELLOW}"
    echo "    .   *    *    .  *    .   *    ."
    echo "        *  .    *      *      .  *"
    echo "    *      .   *   .   *  .    *   ."
    echo -e "${NC}"
    sleep 0.5
    
    clear
    echo -e "${BRIGHT_RED}"
    echo "        *    .  *    .   *    *   ."
    echo "    .      *       *   .   *    ."
    echo "  *   .  *   .   *   .   *  .   * "
    echo -e "${NC}"
    echo -e "${BRIGHT_GREEN}      🎉🎊 SUDO ACTIVATED! 🎊🎉${NC}"
    echo -e "${BRIGHT_RED}"
    echo "  *   .  *   .   *   .   *  .   * "
    echo "    .      *   .   *       *    ."
    echo "        *    .  *    .   *    *"
    echo -e "${NC}"
    sleep 0.5
}

# Clear screen
clear


# Initial display - "No way" response
clear
show_board "No way 😢                             " "                                              "
echo ""
echo -e "${YELLOW}════════════════════════════════════════════════════════${NC}"
echo -e "${BRIGHT_GREEN}💡 Type a command to change her mind...${NC}"
echo -e "${CYAN}   (Hint: Try using elevated permissions!)${NC}"
echo ""
echo -n -e "${GREEN}\$ ${NC}"

# Read user input
read user_input

# Check if user typed "sudo"
if [[ $user_input == *"sudo"* ]]; then
    # User typed sudo - show success!
    clear
    
    # Show typing effect
    echo -n -e "${GREEN}\$ ${NC}"
    for word in sudo will you be my Valentine?; do
        echo -n "$word "
        sleep 0.2
    done
    echo ""
    sleep 0.3
    
    echo -e "${YELLOW}[sudo] password for user: ${NC}"
    sleep 0.5
    echo -n "••••••••"
    sleep 0.5
    echo ""
    echo -e "${GREEN}Authenticating...${NC}"
    sleep 1
    echo -e "${BRIGHT_GREEN}✓ Authentication successful!${NC}"
    echo -e "${BRIGHT_GREEN}✓ Elevated permissions granted!${NC}"
    sleep 1.5
    
    # Fireworks
    fireworks
    
    # Show board with "Yes" response
    clear
    show_board "Yes..yes..yes! Let's go! 💖           " "                                              "
    sleep 2
    
    # Hearts falling
    hearts_fall
    
    # Dancing couple
    dancing_couple
    
    # Final celebration
    clear
    echo -e "${BRIGHT_RED}"
    echo "  ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥"
    echo "  ♥                                         ♥"
    echo "  ♥      🎉 SUCCESS! VALENTINE SECURED! 🎉  ♥"
    echo "  ♥                                         ♥"
    echo "  ♥   sudo: the ultimate permission hack!  ♥"
    echo "  ♥                                         ♥"
    echo "  ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥"
    echo -e "${NC}"
    echo ""
    echo -e "${YELLOW}           \\o/    \\o/${NC}"
    echo -e "${YELLOW}            |  ❤  |${NC}"
    echo -e "${YELLOW}           /|     |\\${NC}"
    echo ""
    echo -e "${BRIGHT_GREEN}   ✨ With sudo powers, anything is possible! ✨${NC}"
    echo -e "${BRIGHT_RED}          💕 Happy Valentine's Day! 💕${NC}"
    echo ""
    
else
    # User didn't type sudo
    clear
    echo -e "${RED}"
    echo "╔════════════════════════════════════════════════════════╗"
    echo "║         ❌ ACCESS DENIED - Insufficient Permissions     ║"
    echo "╚════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    echo ""
    show_board "Still no way! 😭                      " "                                              "
    echo ""
    echo -e "${YELLOW}💡 Hint: Try using 'sudo' for root/elevated permissions!${NC}"
    echo -e "${CYAN}   Example: sudo will you be my Valentine?${NC}"
    echo ""
    echo -e "${RED}Run the script again and try with sudo! 🔒${NC}"
    echo ""
fi
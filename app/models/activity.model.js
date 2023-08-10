module.exports = (sequelize,Sequelize) => {
    const Activity = sequelize.define("Activity", {
        activity: {
            type: Sequelize.STRING,
            allowNull: false,
            unique: true,
        },
        type: {
            type: Sequelize.STRING,
            allowNull: false,
        },
        participants: {
            type: Sequelize.INTEGER,
            allowNull: false,
        },
        weather: {
            type: Sequelize.ENUM,
            values: ['Thunderstorm','Drizzle','Rain','Snow','Mist','Smoke','Haze','Dust','Fog','Sand','Ash','Squall','Tornado','Clear','Clouds'],
            allowNull: false,
        },
    });

    return Activity;
};
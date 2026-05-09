import { DataTypes, QueryInterface } from "sequelize";

export default {
    up: async (queryInterface: QueryInterface) => {
        const tableInfo = await queryInterface.describeTable("Tickets");
        if ('attendanceCount' in tableInfo) return;

        await queryInterface.addColumn("Tickets", "attendanceCount", {
            type: DataTypes.INTEGER,
            defaultValue: 0,
            allowNull: true
        });
    },

    down: async (queryInterface: QueryInterface) => {
        await queryInterface.removeColumn("Tickets", "attendanceCount");
    }
};

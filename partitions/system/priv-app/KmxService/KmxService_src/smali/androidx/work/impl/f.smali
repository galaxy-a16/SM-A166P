.class public final Landroidx/work/impl/f;
.super Ly0/a;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/work/impl/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/f;

    invoke-direct {v0}, Landroidx/work/impl/f;-><init>()V

    sput-object v0, Landroidx/work/impl/f;->a:Landroidx/work/impl/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Ly0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(La1/b;)V
    .locals 0

    check-cast p1, Landroidx/sqlite/db/framework/b;

    const-string p0, "DELETE FROM SystemIdInfo WHERE work_spec_id IN (SELECT work_spec_id FROM SystemIdInfo LEFT JOIN WorkSpec ON work_spec_id = id WHERE WorkSpec.id IS NULL)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `generation` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_SystemIdInfo` (\n            `work_spec_id` TEXT NOT NULL, \n            `generation` INTEGER NOT NULL DEFAULT 0, \n            `system_id` INTEGER NOT NULL, \n            PRIMARY KEY(`work_spec_id`, `generation`), \n            FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) \n                ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    const-string p0, "INSERT INTO `_new_SystemIdInfo` (`work_spec_id`,`system_id`) SELECT `work_spec_id`,`system_id` FROM `SystemIdInfo`"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    const-string p0, "DROP TABLE `SystemIdInfo`"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE `_new_SystemIdInfo` RENAME TO `SystemIdInfo`"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    return-void
.end method

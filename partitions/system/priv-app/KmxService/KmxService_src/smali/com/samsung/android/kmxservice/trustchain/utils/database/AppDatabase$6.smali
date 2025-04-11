.class Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$6;
.super Ly0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(La1/b;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS \'membership_fabric_info\'"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE \'membership_fabric_info\' (\'fabric_id\' TEXT NOT NULL DEFAULT \'\', \'block_capacity\' INTEGER NOT NULL DEFAULT 0, \'transaction_capacity\' INTEGER NOT NULL DEFAULT 0, \'fragment_size\' INTEGER NOT NULL DEFAULT 0, \'fabric_pub_key\' TEXT NOT NULL DEFAULT \'\', \'ftolerance\' INTEGER NOT NULL DEFAULT 0, \'syncPeriod\' INTEGER NOT NULL DEFAULT 0, \'validPeriod\' INTEGER NOT NULL DEFAULT 0, \'updated_at\' INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(\'fabric_id\'))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS \'membership_member_info\'"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE \'membership_member_info\' (\'member_id\' TEXT NOT NULL DEFAULT \'\', \'member_noti_server\' TEXT NOT NULL DEFAULT \'\', \'member_reg_info\' TEXT NOT NULL DEFAULT \'\', \'trust_level\' TEXT NOT NULL DEFAULT \'\', \'cert_chain\' TEXT NOT NULL DEFAULT \'\', \'device_type\' TEXT NOT NULL DEFAULT \'\', \'model_code\' TEXT NOT NULL DEFAULT \'\', \'stDeviceId\' TEXT NOT NULL DEFAULT \'\', \'isPeer\' TEXT NOT NULL DEFAULT \'\', \'saDeviceId\' TEXT NOT NULL DEFAULT \'\', \'securityStatus\' TEXT NOT NULL DEFAULT \'\', PRIMARY KEY(\'member_id\'))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    return-void
.end method

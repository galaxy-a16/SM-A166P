.class Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$4;
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

    const-string p0, "ALTER TABLE \'membership_info\' RENAME TO \'sa_info\'"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE \'membership_member_info\' (\'member_id\' TEXT NOT NULL, \'member_noti_server\' TEXT NOT NULL, \'member_reg_info\' TEXT NOT NULL, \'trust_level\' TEXT NOT NULL, \'cert_chain\' TEXT NOT NULL,\'model_code\' TEXT NOT NULL, \'isPeer\' TEXT NOT NULL, PRIMARY KEY(\'member_id\'))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE \'membership_fabric_info\' (\'fabric_id\' TEXT NOT NULL, \'block_capacity\' INT NOT NULL, \'transaction_capacity\' INT NOT NULL, \'fragment_size\' INT NOT NULL, \'fabric_pub_key\' TEXT NOT NULL, \'ftolerance\' INT NOT NULL, PRIMARY KEY(\'fabric_id\'))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    return-void
.end method

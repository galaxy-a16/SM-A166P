.class Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$5;
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

    const-string p0, "ALTER TABLE \'membership_fabric_info\' ADD COLUMN \'updated_at\' INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    return-void
.end method

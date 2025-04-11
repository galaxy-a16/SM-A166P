.class public Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fabric_id:Ljava/lang/String;

.field public member_id:Ljava/lang/String;

.field public sa_guid:Ljava/lang/String;

.field public sa_mcc:Ljava/lang/String;

.field public sa_region_mcc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->member_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->fabric_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->sa_guid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->sa_mcc:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->sa_region_mcc:Ljava/lang/String;

    return-void
.end method

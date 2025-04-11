.class public Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cert_chain:Ljava/lang/String;

.field public device_type:Ljava/lang/String;

.field public isPeer:Ljava/lang/String;

.field public member_id:Ljava/lang/String;

.field public member_noti_server:Ljava/lang/String;

.field public member_reg_info:Ljava/lang/String;

.field public model_code:Ljava/lang/String;

.field public saDeviceId:Ljava/lang/String;

.field public securityStatus:Ljava/lang/String;

.field public stDeviceId:Ljava/lang/String;

.field public trust_level:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_noti_server:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_reg_info:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->trust_level:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->cert_chain:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->device_type:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->model_code:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->stDeviceId:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->saDeviceId:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->securityStatus:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->isPeer:Ljava/lang/String;

    return-void
.end method

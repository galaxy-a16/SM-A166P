.class public Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CNT_RETRY_SERVER_STATUS:I = 0x5

.field public static final CSC_COUNTRY_CODE_CHINA:Ljava/lang/String; = "China"

.field public static final CSC_COUNTRY_ISO_CODE_CHINA:Ljava/lang/String; = "CN"

.field public static final DASHBOARD_APPNAME:Ljava/lang/String; = "dashboard"

.field public static final DASHBOARD_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_ALLOWED_THRESHOLD:Ljava/lang/String; = "ACTIVE_MEMBERS_MORE_THAN_THRESHOLD"

.field public static final ERROR_CODE_BB_ALREADY_REGISTERED:Ljava/lang/String; = "ALREADY_REGISTERED_MEMBER"

.field public static final ERROR_CODE_BB_NO_REGISTERED_CHAIN:Ljava/lang/String; = "NO_REGISTERED_CHAIN"

.field public static final ERROR_CODE_BB_NO_REGISTERED_MEMBER:Ljava/lang/String; = "NO_REGISTERED_MEMBER"

.field public static final KMX_CHAIN_ACTIVATE_COMPLETED:Ljava/lang/String; = "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_ACTIVATE_COMPLETED"

.field public static final KMX_CHAIN_DEACTIVATE_COMPLETED:Ljava/lang/String; = "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_DEACTIVATE_COMPLETED"

.field public static final MCC_CODE_CHINA_WITH_MOBILE_NETWORK:Ljava/lang/String; = "460"

.field public static final MCC_CODE_CHINA_WITH_NO_NETWORK:Ljava/lang/String; = "461"

.field public static final RATIO_MEMBER_THRESHOLD_WAITING_WAKE_UP:D = 0.85

.field public static final STRING_DEFAULT_PUSH_SERVER:Ljava/lang/String; = "fcm"

.field public static final STRING_INVALID_MEMBER_REG_INFO:Ljava/lang/String; = "INVALID_PUSH_TOKEN"

.field public static final TIME_10SECOND_IN_MILLISECOND:J = 0x2710L

.field public static final TIME_1MINUTE_IN_MILLISECOND:J = 0xea60L

.field public static final TIME_6DAY_IN_MILLISECOND:J = 0x1ee62800L

.field public static final TIME_7DAY_IN_MILLISECOND:J = 0x240c8400L

.field public static final TIME_DELAY_CONSENSUS_CALLBACK:I = 0xa

.field public static final TIME_REFRESH_FABRIC_INFO_DEFAULT:J = 0x240c8400L

.field public static final TIME_THRESHOLD_REACHED_TIMEOUT_IN_SEC:I = 0x1e

.field public static final ftolerance:I = 0x1

.field public static final isPeer:Z = true

.field public static final serviceName:Ljava/lang/String; = "KmxChain"

.field public static final trustLevel:Ljava/lang/String; = "L1"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "trust_level"

    const-string v1, "encryption_public_key"

    const-string v2, "security_status"

    const-string v3, "security_status_cause"

    const-string v4, "timestamp"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->DASHBOARD_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDashboardKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_dashboard"

    invoke-static {p0, v0}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomPushToken()Ljava/lang/String;
    .locals 1

    const-string v0, "TEMP_STRING_FOR_PUSH_TOKEN"

    return-object v0
.end method

.class final enum Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
.super Ljava/lang/Enum;
.source "KeyCustomizationInfoXmlUtils.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;


# instance fields
.field private final code:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .locals 4

    .line 76
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    sget-object v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    sget-object v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    sget-object v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v1, "FILE_NOT_FOUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 76
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .locals 1

    .line 76
    const-class v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object v0
.end method

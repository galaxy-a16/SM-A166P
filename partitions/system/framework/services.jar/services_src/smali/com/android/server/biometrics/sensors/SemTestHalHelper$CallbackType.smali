.class public final enum Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
.super Ljava/lang/Enum;
.source "SemTestHalHelper.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ENUMERATE:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum REMOVED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .locals 7

    .line 45
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->REMOVED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENUMERATE:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v6, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    filled-new-array/range {v0 .. v6}, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "ENROLL_RESULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "AUTHENTICATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "REMOVED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->REMOVED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "ENUMERATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENUMERATE:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "TSP_FOD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 45
    invoke-static {}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$values()[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .locals 1

    .line 45
    const-class v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v0}, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-object v0
.end method

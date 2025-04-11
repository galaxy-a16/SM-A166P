.class public final enum Lcom/samsung/android/camera/Logger$ID;
.super Ljava/lang/Enum;
.source "Logger.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/camera/Logger$ID;

.field public static final enum CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/camera/Logger$ID;
    .locals 8

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    sget-object v2, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    sget-object v3, Lcom/samsung/android/camera/Logger$ID;->VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;

    sget-object v4, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    sget-object v5, Lcom/samsung/android/camera/Logger$ID;->POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

    sget-object v6, Lcom/samsung/android/camera/Logger$ID;->CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

    sget-object v7, Lcom/samsung/android/camera/Logger$ID;->DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/camera/Logger$ID;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "CAMERA_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "SHAKE_EVENT_LISTENER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "REQUEST_INJECTOR_SERVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "VISION_SERVER_RECEIVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "FOLD_EVENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "POST_PROCESS_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "CAMERA_APPLICATION_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "DATABASE_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->$values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->$VALUES:[Lcom/samsung/android/camera/Logger$ID;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/Logger$ID;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/Logger$ID;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/Logger$ID;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->$VALUES:[Lcom/samsung/android/camera/Logger$ID;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/Logger$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/Logger$ID;

    return-object v0
.end method

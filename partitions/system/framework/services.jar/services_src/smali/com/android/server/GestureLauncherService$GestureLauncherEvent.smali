.class public final enum Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
.super Ljava/lang/Enum;
.source "GestureLauncherService.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 4

    .line 203
    sget-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    sget-object v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    sget-object v2, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    sget-object v3, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 205
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/4 v1, 0x0

    const/16 v2, 0x292

    const-string v3, "GESTURE_CAMERA_LIFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 208
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/4 v1, 0x1

    const/16 v2, 0x293

    const-string v3, "GESTURE_CAMERA_WIGGLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 211
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/4 v1, 0x2

    const/16 v2, 0x294

    const-string v3, "GESTURE_CAMERA_DOUBLE_TAP_POWER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 214
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/4 v1, 0x3

    const/16 v2, 0x295

    const-string v3, "GESTURE_EMERGENCY_TAP_POWER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 203
    invoke-static {}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$values()[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput p3, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    .line 203
    const-class v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    .line 203
    sget-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-virtual {v0}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 225
    iget p0, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    return p0
.end method

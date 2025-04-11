.class public final enum Lcom/android/server/app/GameManagerService$FrameRate;
.super Ljava/lang/Enum;
.source "GameManagerService.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_144:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_36:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_48:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_72:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;


# instance fields
.field public final fps:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/app/GameManagerService$FrameRate;
    .locals 12

    .line 403
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v1, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v2, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_36:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v3, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v4, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v5, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_48:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v6, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v7, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_72:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v8, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v9, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v10, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_144:Lcom/android/server/app/GameManagerService$FrameRate;

    sget-object v11, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;

    filled-new-array/range {v0 .. v11}, [Lcom/android/server/app/GameManagerService$FrameRate;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 404
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v1, "FPS_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 405
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    const-string v3, "FPS_30"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 406
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x2

    const/16 v2, 0x24

    const-string v3, "FPS_36"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_36:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 407
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x3

    const/16 v2, 0x28

    const-string v3, "FPS_40"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 408
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x4

    const/16 v2, 0x2d

    const-string v3, "FPS_45"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 409
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x5

    const/16 v2, 0x30

    const-string v3, "FPS_48"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_48:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 410
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x6

    const/16 v2, 0x3c

    const-string v3, "FPS_60"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 411
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/4 v1, 0x7

    const/16 v2, 0x48

    const-string v3, "FPS_72"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_72:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 412
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/16 v1, 0x8

    const/16 v2, 0x5a

    const-string v3, "FPS_90"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 413
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/16 v1, 0x9

    const/16 v2, 0x78

    const-string v3, "FPS_120"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 414
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/16 v1, 0xa

    const/16 v2, 0x90

    const-string v3, "FPS_144"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_144:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 415
    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const/16 v1, 0xb

    const/4 v2, -0x1

    const-string v3, "FPS_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;

    .line 403
    invoke-static {}, Lcom/android/server/app/GameManagerService$FrameRate;->$values()[Lcom/android/server/app/GameManagerService$FrameRate;

    move-result-object v0

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->$VALUES:[Lcom/android/server/app/GameManagerService$FrameRate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 420
    iput p3, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$FrameRate;
    .locals 1

    .line 403
    const-class v0, Lcom/android/server/app/GameManagerService$FrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$FrameRate;

    return-object p0
.end method

.method public static values()[Lcom/android/server/app/GameManagerService$FrameRate;
    .locals 1

    .line 403
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->$VALUES:[Lcom/android/server/app/GameManagerService$FrameRate;

    invoke-virtual {v0}, [Lcom/android/server/app/GameManagerService$FrameRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/app/GameManagerService$FrameRate;

    return-object v0
.end method

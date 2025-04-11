.class final enum Lcom/android/server/audio/AudioService$BypassReason;
.super Ljava/lang/Enum;
.source "AudioService.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;


# direct methods
.method public static synthetic $values()[Lcom/android/server/audio/AudioService$BypassReason;
    .locals 12

    .line 15791
    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v3, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v4, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v5, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v6, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v7, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v8, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v9, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v10, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v11, Lcom/android/server/audio/AudioService$BypassReason;->LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

    filled-new-array/range {v0 .. v11}, [Lcom/android/server/audio/AudioService$BypassReason;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 15792
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "NO_BYPASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15793
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "DISPLAY_VOLUME_CONTROL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15794
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "CANNOT_UNMUTE_SILENT_VIBRATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15795
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "ALL_SOUND_MUTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15796
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "TMS_CONNECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15797
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "CONSUME_ADJUST_SAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15798
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "MULTISOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15799
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "MEDIA_VOLUME_STEP_ON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15800
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "SKIP_WARNING_POPUP_VISIBLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15801
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "SKIP_VOLUME_PANEL_NOT_VISIBLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15802
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "VOLUME_LIMITER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15803
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "LE_BROADCAST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15791
    invoke-static {}, Lcom/android/server/audio/AudioService$BypassReason;->$values()[Lcom/android/server/audio/AudioService$BypassReason;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15791
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    .line 15791
    const-class v0, Lcom/android/server/audio/AudioService$BypassReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioService$BypassReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    .line 15791
    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    invoke-virtual {v0}, [Lcom/android/server/audio/AudioService$BypassReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method

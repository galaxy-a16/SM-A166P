.class final enum Lcom/android/server/vibrator/Vibration$Status;
.super Ljava/lang/Enum;
.source "Vibration.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_ACH_NON_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_ACH_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum RUNNING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum UNKNOWN:Lcom/android/server/vibrator/Vibration$Status;


# instance fields
.field private final mProtoEnumValue:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/vibrator/Vibration$Status;
    .locals 30

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->UNKNOWN:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v6, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v10, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v11, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v12, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v15, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v16, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v17, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v18, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v19, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v20, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v21, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v22, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v23, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v24, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v25, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v26, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v27, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_ACH_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v28, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_ACH_NON_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v29, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

    filled-new-array/range {v0 .. v29}, [Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->UNKNOWN:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "FINISHED_UNEXPECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "FORWARDED_TO_INPUT_DEVICES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "CANCELLED_BINDER_DIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "CANCELLED_BY_SCREEN_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "CANCELLED_BY_SETTINGS_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "CANCELLED_BY_USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "CANCELLED_BY_UNKNOWN_REASON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "CANCELLED_SUPERSEDED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_ERROR_APP_OPS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_ERROR_CANCELLING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_ERROR_SCHEDULING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_ERROR_TOKEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_APP_OPS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_BACKGROUND"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_UNKNOWN_VIBRATION"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_UNSUPPORTED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_FOR_EXTERNAL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_FOR_HIGHER_IMPORTANCE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "IGNORED_FOR_ONGOING"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "IGNORED_FOR_POWER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "IGNORED_FOR_RINGER_MODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "IGNORED_FOR_SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "IGNORED_SUPERSEDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "IGNORED_FROM_VIRTUAL_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "CANCELLED_ACH_REPEATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_ACH_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "CANCELLED_ACH_NON_REPEATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_ACH_NON_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    const-string v3, "CANCELLED_SERVICE_RECOVERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {}, Lcom/android/server/vibrator/Vibration$Status;->$values()[Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/vibrator/Vibration$Status;->mProtoEnumValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    const-class v0, Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Vibration$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/Vibration$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/Vibration$Status;

    return-object v0
.end method


# virtual methods
.method public getProtoEnumValue()I
    .locals 0

    iget p0, p0, Lcom/android/server/vibrator/Vibration$Status;->mProtoEnumValue:I

    return p0
.end method

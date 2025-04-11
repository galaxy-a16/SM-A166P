.class public Lcom/att/iqi/lib/metrics/ea/EA11;
.super Lcom/att/iqi/lib/Metric;
.source "EA11.java"


# static fields
.field private static final ALL_SETTINGS_UNKNOWN:[B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final KEY_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final KEY_ENABLE_ALERTS_MASTER_TOGGLE:Ljava/lang/String; = "enable_alerts_master_toggle"

.field public static final KEY_ENABLE_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final KEY_ENABLE_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final KEY_ENABLE_CMAS_AMBER_ALERTS:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final KEY_ENABLE_CMAS_EXTREME_THREAT_ALERTS:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final KEY_ENABLE_CMAS_PRESIDENTIAL_ALERTS:Ljava/lang/String; = "enable_cmas_presidential_alerts"

.field public static final KEY_ENABLE_CMAS_SEVERE_THREAT_ALERTS:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final KEY_ENABLE_EMERGENCY_ALERTS:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final KEY_ENABLE_EXERCISE_ALERTS:Ljava/lang/String; = "enable_exercise_alerts"

.field public static final KEY_ENABLE_PUBLIC_SAFETY_MESSAGES:Ljava/lang/String; = "enable_public_safety_messages"

.field public static final KEY_ENABLE_PUBLIC_SAFETY_MESSAGES_FULL_SCREEN:Ljava/lang/String; = "enable_public_safety_messages_full_screen"

.field public static final KEY_ENABLE_STATE_LOCAL_TEST_ALERTS:Ljava/lang/String; = "enable_state_local_test_alerts"

.field public static final KEY_ENABLE_TEST_ALERTS:Ljava/lang/String; = "enable_test_alerts"

.field public static final KEY_OPERATOR_DEFINED_ALERTS:Ljava/lang/String; = "enable_operator_defined_alerts"

.field public static final KEY_OVERRIDE_DND:Ljava/lang/String; = "override_dnd"

.field public static final KEY_RECEIVE_CMAS_IN_SECOND_LANGUAGE:Ljava/lang/String; = "receive_cmas_in_second_language"

.field private static final SETTING_DISABLED:B = 0x0t

.field private static final SETTING_ENABLED:B = 0x1t

.field private static final SETTING_MASK:B = 0x3t

.field private static final sPreferenceKeys:[Ljava/lang/String;


# instance fields
.field private final dwFlags:[B

.field private mBooleanIndex:I

.field private mBooleanShift:I

.field private szInterval:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 34
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "EA11"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ID:Lcom/att/iqi/lib/Metric$ID;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    const-string v1, "enable_alerts_master_toggle"

    const-string v2, "enable_cmas_presidential_alerts"

    const-string v3, "enable_cmas_extreme_threat_alerts"

    const-string v4, "enable_cmas_severe_threat_alerts"

    const-string v5, "enable_cmas_amber_alerts"

    const-string v6, "enable_public_safety_messages"

    const-string v7, "enable_emergency_alerts"

    const-string v8, "enable_test_alerts"

    const-string v9, "enable_exercise_alerts"

    const-string v10, "enable_operator_defined_alerts"

    const-string v11, "enable_state_local_test_alerts"

    const-string v12, "enable_public_safety_messages_full_screen"

    const-string v13, "enable_alert_vibrate"

    const-string v14, "enable_alert_speech"

    const-string/jumbo v15, "override_dnd"

    const-string/jumbo v16, "receive_cmas_in_second_language"

    .line 110
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->sPreferenceKeys:[Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/att/iqi/lib/metrics/ea/EA11$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ea/EA11$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x56t
        -0x56t
        -0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 132
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 35
    sget-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    const-string v2, ""

    .line 36
    iput-object v2, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    const/4 v2, 0x0

    .line 38
    iput v2, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    const/4 v3, 0x6

    .line 39
    iput v3, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 133
    array-length p0, v0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 35
    sget-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    const-string v1, ""

    .line 36
    iput-object v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    const/4 v1, 0x6

    .line 39
    iput v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    return-void
.end method

.method private advanceField()V
    .locals 1

    .line 156
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    if-nez v0, :cond_0

    .line 157
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    const/4 v0, 0x6

    .line 158
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 160
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    const/4 v1, 0x6

    .line 149
    iput v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 150
    sget-object v1, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    array-length v2, v1

    invoke-static {v1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    sget-object p0, Lcom/att/iqi/lib/metrics/ea/EA11;->sPreferenceKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setBoolean(Z)Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 5

    .line 171
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    iget-object v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 174
    aget-byte v2, v1, v0

    iget v3, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    const/4 v4, 0x3

    shl-int/2addr v4, v3

    not-int v4, v4

    and-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 175
    aput-byte p1, v1, v0

    .line 176
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA11;->advanceField()V

    return-object p0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterval(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    return-object p0
.end method

.method public setUnknown()Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA11;->advanceField()V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 210
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

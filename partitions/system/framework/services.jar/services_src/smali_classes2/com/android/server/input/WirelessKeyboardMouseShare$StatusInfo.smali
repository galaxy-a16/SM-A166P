.class public Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# instance fields
.field public mAppRegistered:Z

.field public mConnectionState:I

.field public mFocusedDeviceToString:Ljava/lang/String;

.field public mPluggedDeviceToString:Ljava/lang/String;

.field public mPluggedDeviceToStringList:Ljava/lang/String;

.field public mToLocalTablet:Z

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 204
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    const-string/jumbo v0, "null"

    .line 205
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 209
    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method


# virtual methods
.method public Equals(Ljava/lang/Object;)I
    .locals 3

    .line 244
    instance-of v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 245
    iget v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    check-cast p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    iget v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    or-int/lit8 v1, v1, 0x8

    .line 257
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    iget-boolean v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    if-eq v0, v2, :cond_4

    or-int/lit8 v0, v1, 0x10

    move v1, v0

    .line 260
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    iget-boolean p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    if-eq p0, p1, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    return v1
.end method

.method public setInfo(ILandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ZZ)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    const-string/jumbo p1, "null"

    if-nez p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    if-nez p3, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 217
    iput-boolean p5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 218
    iput-boolean p6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 1

    .line 222
    instance-of v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    iget v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 224
    iget-object v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 227
    iget-boolean v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 228
    iget-boolean p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    :cond_0
    return-void
.end method

.class public abstract Lcom/samsung/accessory/manager/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field public static BT_MAX_CONNECTION:I

.field public static NFC_MAX_CONNECTION:I

.field public static final NOT_SUPPORT:[B

.field public static final TAG:Ljava/lang/String;

.field public static USB_MAX_CONNECTION:I

.field public static WIRELESSCHARGER_MAX_CONNECTION:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEnabledInternal:Z

.field public mSessionState:I

.field public mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 23
    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NFC_MAX_CONNECTION:I

    const/16 v1, 0x8

    .line 24
    sput v1, Lcom/samsung/accessory/manager/connectivity/Connectivity;->BT_MAX_CONNECTION:I

    .line 25
    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->USB_MAX_CONNECTION:I

    .line 26
    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->WIRELESSCHARGER_MAX_CONNECTION:I

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 27
    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 87
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getMaxConnection(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 65
    sget p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NFC_MAX_CONNECTION:I

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 67
    sget p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->BT_MAX_CONNECTION:I

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 69
    sget p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->USB_MAX_CONNECTION:I

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 71
    sget p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->WIRELESSCHARGER_MAX_CONNECTION:I

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/String;)Z
.end method

.method public abstract disable()Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enable()Z
.end method

.method public getSessionState()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    return p0
.end method

.method public abstract isEnabled()Z
.end method

.method public isEnabledInternally()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    return p0
.end method

.method public abstract openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
.end method

.method public abstract sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
.end method

.method public abstract sendStopAuth()Z
.end method

.method public abstract sendStopUsbAuth()V
.end method

.method public abstract sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
.end method

.method public setSessionState(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    return-void
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    return-void
.end method

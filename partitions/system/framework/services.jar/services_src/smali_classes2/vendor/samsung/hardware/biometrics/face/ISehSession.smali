.class public interface abstract Lvendor/samsung/hardware/biometrics/face/ISehSession;
.super Ljava/lang/Object;
.source "ISehSession.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$biometrics$face$ISehSession"

    .line 754
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract authenticateExtension(JI[B)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract authenticateForIssuance(JI[BZLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract close()V
.end method

.method public abstract getFaceTag(I)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;
.end method

.method public abstract getFaceTagList()[I
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getTaInfo()Ljava/lang/String;
.end method

.method public abstract getWrappedData()[B
.end method

.method public abstract getWrappedDataFromMemory()Landroid/hardware/common/Ashmem;
.end method

.method public abstract isTAUnloaded()Z
.end method

.method public abstract loadTA()I
.end method

.method public abstract pause()I
.end method

.method public abstract resume()I
.end method

.method public abstract setFaceTag(I[B)I
.end method

.method public abstract setRotation(I)I
.end method

.method public abstract unloadTA()I
.end method

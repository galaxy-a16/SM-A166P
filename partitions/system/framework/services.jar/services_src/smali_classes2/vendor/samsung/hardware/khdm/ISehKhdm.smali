.class public interface abstract Lvendor/samsung/hardware/khdm/ISehKhdm;
.super Ljava/lang/Object;
.source "ISehKhdm.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$khdm$ISehKhdm"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/khdm/ISehKhdm;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract applyPolicy([BLvendor/samsung/hardware/khdm/SehDeviceInfo;[B)I
.end method

.method public abstract checkKey()I
.end method

.method public abstract deleteKey()I
.end method

.method public abstract executeHdmCmd(I)I
.end method

.method public abstract getDeviceId(Lvendor/samsung/hardware/khdm/SehDeviceInfo;[B)I
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getPolicy(Z[B[B[B)I
.end method

.method public abstract initiate()I
.end method

.method public abstract setKey([BZ)I
.end method

.method public abstract terminate()I
.end method

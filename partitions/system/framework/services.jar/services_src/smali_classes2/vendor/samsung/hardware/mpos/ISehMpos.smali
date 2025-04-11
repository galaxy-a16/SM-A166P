.class public interface abstract Lvendor/samsung/hardware/mpos/ISehMpos;
.super Ljava/lang/Object;
.source "ISehMpos.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$mpos$ISehMpos"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/mpos/ISehMpos;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract commandRequest(I[B[B)I
.end method

.method public abstract createContextWithFd(Ljava/lang/String;Ljava/lang/String;IILandroid/hardware/common/NativeHandle;II)Lvendor/samsung/hardware/mpos/SehCreateContextResponse;
.end method

.method public abstract destroyContext(I)I
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getSharedMemorySize()I
.end method

.method public abstract startSecureTouch(I)Z
.end method

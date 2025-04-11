.class public interface abstract Landroid/hardware/power/IPower;
.super Ljava/lang/Object;
.source "IPower.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$power$IPower"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createHintSession(II[IJ)Landroid/hardware/power/IPowerHintSession;
.end method

.method public abstract getHintSessionPreferredRate()J
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract isBoostSupported(I)Z
.end method

.method public abstract isModeSupported(I)Z
.end method

.method public abstract setBoost(II)V
.end method

.method public abstract setMode(IZ)V
.end method

.class public interface abstract Landroid/hardware/boot/IBootControl;
.super Ljava/lang/Object;
.source "IBootControl.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$boot$IBootControl"

    .line 505
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/boot/IBootControl;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getActiveBootSlot()I
.end method

.method public abstract getCurrentSlot()I
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getNumberSlots()I
.end method

.method public abstract getSnapshotMergeStatus()I
.end method

.method public abstract getSuffix(I)Ljava/lang/String;
.end method

.method public abstract isSlotBootable(I)Z
.end method

.method public abstract isSlotMarkedSuccessful(I)Z
.end method

.method public abstract markBootSuccessful()V
.end method

.method public abstract setActiveBootSlot(I)V
.end method

.method public abstract setSlotAsUnbootable(I)V
.end method

.method public abstract setSnapshotMergeStatus(I)V
.end method

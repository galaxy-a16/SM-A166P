.class public interface abstract Landroid/hardware/power/IPowerHintSession;
.super Ljava/lang/Object;
.source "IPowerHintSession.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$power$IPowerHintSession"

    .line 387
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract pause()V
.end method

.method public abstract reportActualWorkDuration([Landroid/hardware/power/WorkDuration;)V
.end method

.method public abstract resume()V
.end method

.method public abstract sendHint(I)V
.end method

.method public abstract setThreads([I)V
.end method

.method public abstract updateTargetWorkDuration(J)V
.end method

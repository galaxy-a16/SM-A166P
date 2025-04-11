.class public abstract Lcom/android/server/UiModeManagerInternal;
.super Ljava/lang/Object;
.source "UiModeManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyPackageNightModeIfNeeded(Ljava/lang/String;I)Z
.end method

.method public abstract isNightMode()Z
.end method

.method public abstract needToShowNightModeDialog(Ljava/lang/String;I)Z
.end method

.method public abstract onEarlySwitchUser(I)V
.end method

.method public abstract setNightModeDialogShown(Ljava/lang/String;I)V
.end method

.method public abstract shouldIgnoreDialog()Z
.end method

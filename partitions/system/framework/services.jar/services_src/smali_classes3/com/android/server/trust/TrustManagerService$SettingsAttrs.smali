.class public Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# instance fields
.field public canUnlockProfile:Z

.field public componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 2213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2214
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->componentName:Landroid/content/ComponentName;

    .line 2215
    iput-boolean p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    return-void
.end method

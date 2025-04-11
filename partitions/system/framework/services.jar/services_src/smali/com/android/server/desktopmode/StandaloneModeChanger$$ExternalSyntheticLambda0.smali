.class public final synthetic Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iput-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->$r8$lambda$c52UvxHe14rUESvMY5L8Qh0mrNE(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V

    return-void
.end method

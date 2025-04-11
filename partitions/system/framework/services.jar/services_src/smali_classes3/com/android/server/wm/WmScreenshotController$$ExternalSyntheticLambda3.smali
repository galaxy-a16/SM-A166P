.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:Landroid/content/ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda3;->f$1:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda3;->f$1:Landroid/content/ServiceConnection;

    invoke-static {v0, p0}, Lcom/android/server/wm/WmScreenshotController;->$r8$lambda$YbQ6EIpuo0WkIm7pyFUMdW2nlYs(Lcom/android/server/wm/WmScreenshotController;Landroid/content/ServiceConnection;)V

    return-void
.end method

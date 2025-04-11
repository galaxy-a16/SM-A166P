.class public Lcom/android/server/smartclip/SpenGestureManagerService$8;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

.field public final synthetic val$isShow:Z


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .locals 0

    .line 1613
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iput-boolean p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1616
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1617
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->val$isShow:Z

    const-string/jumbo v1, "show_touches"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

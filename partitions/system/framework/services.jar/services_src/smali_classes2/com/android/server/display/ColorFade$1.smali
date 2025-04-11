.class public Lcom/android/server/display/ColorFade$1;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ColorFade;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ColorFade;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolutionChanged()V
    .locals 2

    .line 854
    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorFade;->-$$Nest$fputmIsResolutionChanged(Lcom/android/server/display/ColorFade;Z)V

    .line 856
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

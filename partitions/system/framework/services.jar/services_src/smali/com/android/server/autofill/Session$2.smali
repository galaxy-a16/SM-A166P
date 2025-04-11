.class public Lcom/android/server/autofill/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 1417
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$mnotifyFillUiHidden(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V
    .locals 4

    .line 1404
    iget-object v0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$mnotifyFillUiShown(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    .line 1406
    iget-object p1, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    iget-object p1, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1409
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmLatencyBaseTime(Lcom/android/server/autofill/Session;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1410
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmPresentationStatsEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/PresentationStatsEventLogger;

    move-result-object p0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs(I)V

    .line 1412
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;
.super Landroid/content/om/ISamsungOverlayCallback$Stub;
.source "LocaleOverlayManager.java"


# instance fields
.field public mObservingPackages:Ljava/util/List;

.field public final synthetic this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/util/List;)V
    .locals 1

    .line 876
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-direct {p0}, Landroid/content/om/ISamsungOverlayCallback$Stub;-><init>()V

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 877
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 879
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 887
    :try_start_0
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayStateChanged() called with: packageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], enabled = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] path = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p3, ""

    .line 889
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const-string p2, "/data/overlays/current_locale_apks/files/"

    const-string p3, ""

    .line 891
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".apk"

    const-string p3, ""

    .line 892
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 895
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 896
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 898
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onOverlayStateChanged(): Trying to call checkSanityAndCompleteTask"

    invoke-static {p1, p2}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcheckSanityAndCompleteTask(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

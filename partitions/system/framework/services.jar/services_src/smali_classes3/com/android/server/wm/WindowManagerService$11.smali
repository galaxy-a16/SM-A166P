.class Lcom/android/server/wm/WindowManagerService$11;
.super Ljava/util/HashMap;
.source "WindowManagerService.java"


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 11075
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11078
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "14aafbdad4dd99765346a1de191320328465b8420713bc22cc4f8b211b87cd3a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11079
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "b0c08d3318f7c6f5be0c62f47cab1b59f5f5f13d7da0d547d041fb51cc20b0ec"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "jp.co.rakuten.pay"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

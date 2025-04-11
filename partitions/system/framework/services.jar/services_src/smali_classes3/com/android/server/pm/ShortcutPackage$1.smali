.class public Lcom/android/server/pm/ShortcutPackage$1;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic val$cb:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic $r8$lambda$hLVYW22H5MIdcWcRsiJJQP1a-sQ(Lcom/android/server/pm/ShortcutPackage$1;Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage$1;->lambda$onResult$0(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2611
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$1;->this$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$1;->val$cb:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onResult$0(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 2617
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$1;->this$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2618
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result p0

    .line 2617
    invoke-static {p0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 1

    .line 2615
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 2616
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackage$1;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2619
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2620
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$1;->val$cb:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "ShortcutService"

    const-string v0, "Error retrieving shortcuts"

    .line 2625
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

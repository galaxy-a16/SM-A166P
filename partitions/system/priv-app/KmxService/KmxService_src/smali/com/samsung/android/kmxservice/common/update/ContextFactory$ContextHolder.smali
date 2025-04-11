.class Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/update/ContextFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextHolder"
.end annotation


# instance fields
.field private applicationContext:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private baseContext:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/b;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->baseContext:Ljava/util/function/Supplier;

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/b;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->applicationContext:Ljava/util/function/Supplier;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->lambda$new$0()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->lambda$new$1()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->applicationContext:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->baseContext:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;Lcom/samsung/android/kmxservice/common/update/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->applicationContext:Ljava/util/function/Supplier;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;Lcom/samsung/android/kmxservice/common/update/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->baseContext:Ljava/util/function/Supplier;

    return-void
.end method

.method private static synthetic lambda$new$0()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$new$1()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

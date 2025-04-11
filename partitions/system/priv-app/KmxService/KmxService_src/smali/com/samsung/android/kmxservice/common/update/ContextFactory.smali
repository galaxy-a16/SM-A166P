.class public Lcom/samsung/android/kmxservice/common/update/ContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;
    }
.end annotation


# static fields
.field private static final contextHolder:Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;-><init>(I)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->contextHolder:Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->lambda$attachApplicationContext$1(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachApplicationContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->contextHolder:Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;

    new-instance v1, Lcom/samsung/android/kmxservice/common/update/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/common/update/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->e(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;Lcom/samsung/android/kmxservice/common/update/a;)V

    new-instance v1, Lcom/samsung/android/kmxservice/common/update/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/common/update/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->f(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;Lcom/samsung/android/kmxservice/common/update/a;)V

    return-void
.end method

.method public static attachBaseContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->contextHolder:Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;

    new-instance v1, Lcom/samsung/android/kmxservice/common/update/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/common/update/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->f(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;Lcom/samsung/android/kmxservice/common/update/a;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->lambda$attachApplicationContext$2(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->lambda$attachBaseContext$0(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->contextHolder:Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->c(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static getBaseContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->contextHolder:Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->d(Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic lambda$attachApplicationContext$1(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$attachApplicationContext$2(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$attachBaseContext$0(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

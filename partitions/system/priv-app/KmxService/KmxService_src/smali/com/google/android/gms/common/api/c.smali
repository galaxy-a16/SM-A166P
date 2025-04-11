.class public final Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/common/api/c;


# instance fields
.field public final a:Landroidx/work/impl/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lp1/e;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lp1/e;-><init>(I)V

    iget-object v1, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/x;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/work/impl/x;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/work/impl/x;-><init>(II)V

    iput-object v1, v0, Lp1/e;->b:Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Looper;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lp1/e;->c:Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/c;

    iget-object v2, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/x;

    iget-object v0, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/c;-><init>(Landroidx/work/impl/x;Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/common/api/c;->b:Lcom/google/android/gms/common/api/c;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/x;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/c;->a:Landroidx/work/impl/x;

    return-void
.end method

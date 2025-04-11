.class public final Lp2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# instance fields
.field public final a:Lob/a;

.field public final b:Lob/a;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/dagger/internal/c;Lp2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/g;->a:Lob/a;

    iput-object p2, p0, Lp2/g;->b:Lob/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lp2/g;->a:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lp2/g;->b:Lob/a;

    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lp2/f;

    check-cast p0, Lp2/d;

    invoke-direct {v1, v0, p0}, Lp2/f;-><init>(Landroid/content/Context;Lp2/d;)V

    return-object v1
.end method

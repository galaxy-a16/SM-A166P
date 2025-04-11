.class public final Lokhttp3/internal/connection/g;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/i;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "referent"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/internal/connection/g;->a:Ljava/lang/Object;

    return-void
.end method

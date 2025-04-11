.class Lcom/google/gson/Gson$4;
.super Lcom/google/gson/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/i;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/gson/i;


# direct methods
.method public constructor <init>(Lcom/google/gson/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/Gson$4;->a:Lcom/google/gson/i;

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lt5/a;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/gson/Gson$4;->a:Lcom/google/gson/i;

    invoke-virtual {p0, p1}, Lcom/google/gson/i;->b(Lt5/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object p1
.end method

.method public final c(Lt5/b;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/google/gson/Gson$4;->a:Lcom/google/gson/i;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/i;->c(Lt5/b;Ljava/lang/Object;)V

    return-void
.end method

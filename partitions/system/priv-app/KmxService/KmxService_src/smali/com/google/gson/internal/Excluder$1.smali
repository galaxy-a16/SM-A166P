.class Lcom/google/gson/internal/Excluder$1;
.super Lcom/google/gson/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/i;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/gson/i;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/gson/b;

.field public final synthetic e:Lcom/google/gson/reflect/TypeToken;

.field public final synthetic f:Lcom/google/gson/internal/Excluder;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/google/gson/internal/Excluder$1;->b:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/Excluder$1;->c:Z

    iput-object p4, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/b;

    iput-object p5, p0, Lcom/google/gson/internal/Excluder$1;->e:Lcom/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lt5/a;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lcom/google/gson/i;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->e:Lcom/google/gson/reflect/TypeToken;

    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/b;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/b;->d(Lcom/google/gson/j;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lcom/google/gson/i;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/gson/i;->b(Lt5/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lt5/b;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt5/b;->H()Lt5/b;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lcom/google/gson/i;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->e:Lcom/google/gson/reflect/TypeToken;

    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/b;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/b;->d(Lcom/google/gson/j;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lcom/google/gson/i;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/i;->c(Lt5/b;Ljava/lang/Object;)V

    return-void
.end method

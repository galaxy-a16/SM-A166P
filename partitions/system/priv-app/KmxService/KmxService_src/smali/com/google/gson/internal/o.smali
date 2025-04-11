.class public final Lcom/google/gson/internal/o;
.super Lfc/c;
.source "SourceFile"


# instance fields
.field public final synthetic m:Ljava/lang/reflect/Method;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/o;->m:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/google/gson/internal/o;->n:I

    invoke-direct {p0}, Lfc/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lfc/c;->a(Ljava/lang/Class;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget p1, p0, Lcom/google/gson/internal/o;->n:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/google/gson/internal/o;->m:Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lkotlinx/coroutines/scheduling/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:Lcom/google/gson/internal/c;


# direct methods
.method public constructor <init>(JLcom/google/gson/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/i;->a:J

    iput-object p3, p0, Lkotlinx/coroutines/scheduling/i;->b:Lcom/google/gson/internal/c;

    return-void
.end method

.class public final Lt7/e;
.super Leb/e;
.source "SourceFile"


# instance fields
.field public final b:Lw8/c;


# direct methods
.method public constructor <init>(Lw8/c;)V
    .locals 0

    invoke-direct {p0}, Leb/e;-><init>()V

    iput-object p1, p0, Lt7/e;->b:Lw8/c;

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 1

    new-instance v0, Lt7/a;

    invoke-direct {v0, p1}, Lt7/a;-><init>(Lvc/c;)V

    iget-object p0, p0, Lt7/e;->b:Lw8/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lw8/c;->d(Lw8/d;)V

    return-void
.end method

.class public final Lw5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg8/c;


# instance fields
.field public final a:Lw5/h;


# direct methods
.method public constructor <init>(Lw5/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/o;->a:Lw5/h;

    return-void
.end method


# virtual methods
.method public final a()Lg8/b;
    .locals 1

    new-instance v0, Lw5/e;

    invoke-direct {v0, p0}, Lw5/e;-><init>(Lw5/o;)V

    return-object v0
.end method

.method public final b()Lg8/a;
    .locals 1

    new-instance v0, Lw5/c;

    invoke-direct {v0, p0}, Lw5/c;-><init>(Lw5/o;)V

    return-object v0
.end method

.method public final c()Lw5/h;
    .locals 0

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    return-object p0
.end method

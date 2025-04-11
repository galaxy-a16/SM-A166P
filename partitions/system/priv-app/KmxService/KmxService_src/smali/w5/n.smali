.class public abstract Lw5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:Lw5/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    iput-object v0, p0, Lw5/n;->a:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lw5/n;->b:I

    return-void
.end method

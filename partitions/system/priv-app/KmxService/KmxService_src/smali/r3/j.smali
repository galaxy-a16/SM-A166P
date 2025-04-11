.class public abstract Lr3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr1/b;

.field public static final b:Ld/r0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr1/b;

    invoke-direct {v0}, Lr1/b;-><init>()V

    sput-object v0, Lr3/j;->a:Lr1/b;

    new-instance v0, Ld/r0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ld/r0;-><init>(I)V

    sput-object v0, Lr3/j;->b:Ld/r0;

    return-void
.end method

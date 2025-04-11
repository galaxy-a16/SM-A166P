.class public abstract Lb0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb0/i;

.field public static final b:Lb0/i;

.field public static final c:Lb0/i;

.field public static final d:Lb0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb0/i;-><init>(Lc3/l;Z)V

    sput-object v0, Lb0/j;->a:Lb0/i;

    new-instance v0, Lb0/i;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb0/i;-><init>(Lc3/l;Z)V

    sput-object v0, Lb0/j;->b:Lb0/i;

    new-instance v0, Lb0/i;

    sget-object v1, Lc3/l;->b:Lc3/l;

    invoke-direct {v0, v1, v2}, Lb0/i;-><init>(Lc3/l;Z)V

    sput-object v0, Lb0/j;->c:Lb0/i;

    new-instance v0, Lb0/i;

    invoke-direct {v0, v1, v3}, Lb0/i;-><init>(Lc3/l;Z)V

    sput-object v0, Lb0/j;->d:Lb0/i;

    return-void
.end method

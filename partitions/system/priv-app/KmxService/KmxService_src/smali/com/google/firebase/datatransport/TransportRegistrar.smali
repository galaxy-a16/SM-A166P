.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ln2/l;)Ll2/d;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(La5/d;)Ll2/d;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$getComponents$0(La5/d;)Ll2/d;
    .locals 8

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lo2/r;->b(Landroid/content/Context;)V

    invoke-static {}, Lo2/r;->a()Lo2/r;

    move-result-object p0

    sget-object v0, Lm2/a;->e:Lm2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lo2/p;

    instance-of v2, v0, Lo2/l;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lm2/a;->d:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ll2/c;

    const-string v3, "proto"

    invoke-direct {v2, v3}, Ll2/c;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    :goto_0
    invoke-static {}, Lo2/j;->a()Lp1/v;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "cct"

    invoke-virtual {v3, v4}, Lp1/v;->n(Ljava/lang/String;)V

    iget-object v4, v0, Lm2/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lm2/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "1$"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "\\"

    aput-object v6, v5, v4

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    const/4 v4, 0x3

    aput-object v0, v5, v4

    const-string v0, "%s%s%s%s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_1
    iput-object v0, v3, Lp1/v;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lp1/v;->g()Lo2/j;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lo2/p;-><init>(Ljava/util/Set;Lo2/j;Lo2/r;)V

    return-object v1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La5/c;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [La5/c;

    const-class v0, Ll2/d;

    invoke-static {v0}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v0

    const-string v1, "fire-transport"

    iput-object v1, v0, La5/b;->c:Ljava/lang/String;

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    iput-object v2, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const-string v0, "18.1.7"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

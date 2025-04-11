.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ln2/l;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(La5/d;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(La5/d;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 8

    new-instance v7, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lv4/g;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lv4/g;

    const-class v0, Li5/a;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const-class v0, Lp5/b;

    invoke-interface {p0, v0}, La5/d;->e(Ljava/lang/Class;)Lj5/a;

    move-result-object v2

    const-class v0, Lh5/f;

    invoke-interface {p0, v0}, La5/d;->e(Ljava/lang/Class;)Lj5/a;

    move-result-object v3

    const-class v0, Lk5/d;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lk5/d;

    const-class v0, Ll2/d;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ll2/d;

    const-class v0, Lg5/c;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lg5/c;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lv4/g;Lj5/a;Lj5/a;Lk5/d;Ll2/d;Lg5/c;)V

    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v0}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v0

    const-string v1, "fire-fcm"

    iput-object v1, v0, La5/b;->c:Ljava/lang/String;

    const-class v2, Lv4/g;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    const/4 v3, 0x0

    const-class v4, Li5/a;

    invoke-direct {v2, v3, v3, v4}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    const/4 v4, 0x1

    const-class v5, Lp5/b;

    invoke-direct {v2, v3, v4, v5}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    const-class v5, Lh5/f;

    invoke-direct {v2, v3, v4, v5}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    const-class v5, Ll2/d;

    invoke-direct {v2, v3, v3, v5}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    const-class v2, Lk5/d;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    const-class v2, Lg5/c;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    iput-object v2, v0, La5/b;->g:Ljava/lang/Object;

    iget v2, v0, La5/b;->a:I

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iput v4, v0, La5/b;->a:I

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    aput-object v0, p0, v3

    const-string v0, "23.4.0"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instantiation type has already been set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

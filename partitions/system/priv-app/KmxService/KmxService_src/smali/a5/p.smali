.class public final La5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# static fields
.field public static final c:Lcom/google/firebase/concurrent/h;

.field public static final d:La5/h;


# instance fields
.field public a:Lcom/google/firebase/concurrent/h;

.field public volatile b:Lj5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    sput-object v0, La5/p;->c:Lcom/google/firebase/concurrent/h;

    new-instance v0, La5/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La5/h;-><init>(I)V

    sput-object v0, La5/p;->d:La5/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, La5/p;->c:Lcom/google/firebase/concurrent/h;

    sget-object v1, La5/p;->d:La5/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La5/p;->a:Lcom/google/firebase/concurrent/h;

    iput-object v1, p0, La5/p;->b:Lj5/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La5/p;->b:Lj5/a;

    invoke-interface {p0}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

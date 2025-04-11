.class public final Lcom/google/firebase/messaging/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Lcom/google/firebase/messaging/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/c;

    invoke-direct {v0}, Lcom/google/firebase/messaging/c;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/c;->a:Lcom/google/firebase/messaging/c;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    check-cast p2, Lc5/d;

    const/4 p0, 0x0

    throw p0
.end method

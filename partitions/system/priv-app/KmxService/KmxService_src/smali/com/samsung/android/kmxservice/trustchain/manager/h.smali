.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;

.field public final synthetic e:Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;

.field public final synthetic f:Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

.field public final synthetic g:Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->a:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->d:Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->e:Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->f:Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->g:Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->a:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->d:Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->e:Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->f:Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

    iget-object v6, p0, Lcom/samsung/android/kmxservice/trustchain/manager/h;->g:Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->g(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.class public final Lma/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lha/a;

.field public final c:Lna/b;

.field public final d:Lma/h;

.field public final e:Lpa/a;


# direct methods
.method public constructor <init>(Lha/a;Lna/b;Lma/h;Lpa/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget-object v0, v0, Lga/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lma/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lma/a;->b:Lha/a;

    iput-object p2, p0, Lma/a;->c:Lna/b;

    iput-object p3, p0, Lma/a;->d:Lma/h;

    iput-object p4, p0, Lma/a;->e:Lpa/a;

    return-void
.end method

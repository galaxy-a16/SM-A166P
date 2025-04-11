.class public Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SdpServiceKeeper.java"


# instance fields
.field public attrAlias:Ljava/lang/String;

.field public attrPkgName:Ljava/lang/String;

.field public elementStack:Ljava/util/Stack;

.field public mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

.field public owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

.field public privilegedApps:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$mgetSdpPolicy(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->getSdpPolicy()Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 2

    .line 715
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 711
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->elementStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 719
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->privilegedApps:Ljava/util/List;

    .line 720
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 716
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 773
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start characters : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpServiceKeeper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endDocument()V
    .locals 1

    const-string p0, "SdpServiceKeeper"

    const-string v0, "end document     : "

    .line 734
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 757
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "end element      : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdpServiceKeeper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "privileged_app"

    .line 759
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 760
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 761
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->privilegedApps:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "owner"

    .line 762
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 763
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 767
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    .line 768
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    return-void
.end method

.method public final getSdpPolicy()Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .locals 3

    .line 723
    new-instance v0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->privilegedApps:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    const-string p0, "SdpServiceKeeper"

    const-string/jumbo v0, "start document   : "

    .line 730
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 740
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "start element    : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdpServiceKeeper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "privileged_app"

    .line 743
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "owner"

    .line 744
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 746
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " attribte alias: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "alias"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " attribte pkg_name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pkg_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    .line 751
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    :cond_1
    return-void
.end method

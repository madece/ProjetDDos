#!/usr/bin/python
#Ces bibliothèques sont utilisé pour la configuration réseau dans mininet
from mininet.topo import Topo
from mininet.net import Mininet
from mininet.link import TCLink
from mininet.util import dumpNodeConnections


class MyTopo( Topo ):
    def __init__(self):
        Topo.__init__( self )
#Ici on déclare nos différents équipements
        Host1 = self.addHost('h1')
        Host2 = self.addHost('h2')
        Host3 = self.addHost('h3')
        Host4 = self.addHost('h4')
        Host5 = self.addHost('h5')
        Switch1 = self.addSwitch('s1')
        Switch2 = self.addSwitch('s2')
        Switch3 = self.addSwitch('s3')
#ici on va configurer les liens entre nos équipements défini plus haut
#Dans cette configuration la valeur de 'delay' nous permet de définir les latences
#et celui de 'bw' nous permet de définir la bande passante en Mbits/s et on ne peut
#aller au delà de 1Gbits/s soit 1000Mbits/s
#De plus le 'cls=TCLink' nous permet de définir le tpe de lien que nous voulons crée
        self.addLink(Host1, Switch1, cls=TCLink, delay='5ms', bw=20)
        self.addLink(Host2, Switch1, cls=TCLink, delay='5ms', bw=1000)
        self.addLink(Host3, Switch2, cls=TCLink, delay='5ms', bw=1000)
        self.addLink(Host4, Switch2, cls=TCLink, delay='5ms', bw=20)
        self.addLink(Host5, Switch3, cls=TCLink, delay='5ms', bw=500)
        self.addLink(Switch1, Switch2, cls=TCLink, delay='1ms', bw=750)
        self.addLink(Switch2, Switch3, cls=TCLink, delay='1ms', bw=250)
topos = { 'mytopo': (lambda: MyTopo() ) }
